package com.example.hotel_reception

import android.util.Log
import androidx.annotation.NonNull
import com.example.hotel_reception.procesor.ChannelNotifier
import com.example.hotel_reception.procesor.Processor
import com.example.hotel_reception.procesor.convertors.convertSetup
import com.example.hotel_reception.procesor.dto.setup.SetupDto
import com.example.hotel_reception.procesor.model.*
import com.google.gson.Gson
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodChannel

private const val channel = "hotel/service"
private const val init = "init"
private const val hotelStatus = "hotelStatus"
private const val stopWorld = "stopWorld"
private const val setupArg = "setupArg"
private const val changeSpeed = "changeSpeed"

class MainActivity : FlutterActivity(), ChannelNotifier {
    private val world = World()
    private var channel: EventChannel? = null
    private var sink: EventChannel.EventSink? = null
    private var processor: Processor? = null

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        channel = EventChannel(flutterEngine.dartExecutor.binaryMessenger, hotelStatus)
        channel!!.setStreamHandler(object : EventChannel.StreamHandler {
            override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
                sink = events
            }

            override fun onCancel(arguments: Any?) {
            }
        })

        MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            com.example.hotel_reception.channel
        ).setMethodCallHandler { call, result ->
            Log.i(logTag, "${call.method} has called")
            when (call.method) {
                init -> call.argument<String>(setupArg)?.let(::initChannel) ?: throw Exception()
                stopWorld -> stopWorld()
                changeSpeed -> world.nextSpeed()
            }
        }


    }

    private fun stopWorld() {}

    private fun initChannel(setupString: String) {
        val setup = Gson().fromJson(setupString, SetupDto::class.java)
        processor = Processor(
            world = world,
            notifier = this,
            initialData = convertSetup(setup)
        )
    }

    override fun notifyChannel(data: String) {
        runOnUiThread { sink?.success(data) }
    }

}
