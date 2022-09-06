import UIKit
import Flutter

private let channelName = "hotel/service"
private let initHotel = "init";
private let hotelStatus = "hotelStatus"
private let stopWorld = "stopWorld"
private let setupArg = "setupArg"
private let changeSpeed = "changeSpeed"

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate, onChannelReadyProtocol, ChannelNotifier {
    
   
    
    let world = World()
    var processor: Processor? = nil
    
    
    func onChannelReady(sinkChannel: @escaping (Any?) -> Void) {
        eventSink = sinkChannel
    }
    
    func initProcessor(setup: SetupDto) {
        let service :Service
        switch setup.service {
        case "normal": service = Service.normal
        case "medium": service = .medium
        default: service = .expensive
        }
        
        let rooms = setup.roomsByType.map { room -> RoomByType in
            let type: RoomType
            switch room.type {
            case "": type = .econom(40, 1500)
            case "suite": type = .suite(95, 2500)
            case "president": type = .president(150, 3500)
            default:type = .econom(40, 1500)
            }
            return RoomByType(count: room.count, roomType: type)
        }
        print(rooms)
        print(service)
        processor = Processor(world: world, notifier: self, initData: InitialData(roomByType: rooms, service: service))
    }
    
    func notifiChannel(data: String) {
        print(data)
        eventSink!(data)
    }
    
    private var controller:FlutterViewController? = nil
    private var eventSink : FlutterEventSink? = nil
    override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      GeneratedPluginRegistrant.register(with: self)
      controller = (window?.rootViewController as! FlutterViewController)
      // 1
      let methodChannel =
          FlutterMethodChannel(name: channelName, binaryMessenger: controller!.binaryMessenger)
      // 2
      methodChannel
          .setMethodCallHandler({ [weak self](call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
          switch call.method {
          case initHotel :
              print("initHotel")
              
              let json = String(describing: (call.arguments as! Dictionary<String, String>)["setupArg"]!).data(using: .utf8)
              print((call.arguments as! Dictionary<String, String>)["setupArg"]!)
              print(json!)
              let setupDto = try! JSONDecoder().decode(SetupDto.self, from: json!)
              print(setupDto)
              self!.initProcessor(setup: setupDto)
              break
          case stopWorld:
              print("initHotel")

              break
          case changeSpeed:
              print("initHotel")
              break
          default:
              result(FlutterMethodNotImplemented)
          }
      })
      
      let eventChannel = FlutterEventChannel(name: hotelStatus, binaryMessenger: controller!.binaryMessenger)
      eventChannel.setStreamHandler(SwiftStreamHandler(onChannelReady: self))
      
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
    
    func onChannelReady(eventSinkChannel: @escaping FlutterEventSink) -> Void {
        eventSink = eventSinkChannel
    }
}
typealias MethodHandler = (FlutterEventSink)  -> Void


class SwiftStreamHandler: NSObject, FlutterStreamHandler {
    
    let onChannelReady: onChannelReadyProtocol
    
    init(onChannelReady: onChannelReadyProtocol) {
        self.onChannelReady = onChannelReady
    }
    public func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
        onChannelReady.onChannelReady(sinkChannel: events)
        return nil
    }

    public func onCancel(withArguments arguments: Any?) -> FlutterError? {
        return nil
    }
}

protocol onChannelReadyProtocol {
    func onChannelReady(sinkChannel :@escaping FlutterEventSink)
}
