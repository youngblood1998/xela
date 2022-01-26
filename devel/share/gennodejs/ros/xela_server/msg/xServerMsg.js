// Auto-generated. Do not edit!

// (in-package xela_server.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let xSensorData = require('./xSensorData.js');

//-----------------------------------------------------------

class xServerMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sensor = null;
      this.taxel = null;
      this.xyz = null;
    }
    else {
      if (initObj.hasOwnProperty('sensor')) {
        this.sensor = initObj.sensor
      }
      else {
        this.sensor = 0;
      }
      if (initObj.hasOwnProperty('taxel')) {
        this.taxel = initObj.taxel
      }
      else {
        this.taxel = 0;
      }
      if (initObj.hasOwnProperty('xyz')) {
        this.xyz = initObj.xyz
      }
      else {
        this.xyz = new xSensorData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type xServerMsg
    // Serialize message field [sensor]
    bufferOffset = _serializer.int16(obj.sensor, buffer, bufferOffset);
    // Serialize message field [taxel]
    bufferOffset = _serializer.int16(obj.taxel, buffer, bufferOffset);
    // Serialize message field [xyz]
    bufferOffset = xSensorData.serialize(obj.xyz, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type xServerMsg
    let len;
    let data = new xServerMsg(null);
    // Deserialize message field [sensor]
    data.sensor = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [taxel]
    data.taxel = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [xyz]
    data.xyz = xSensorData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'xela_server/xServerMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '87af96ce27144738864aad5bfffc4da7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 sensor
    int16 taxel
    xSensorData xyz
    ================================================================================
    MSG: xela_server/xSensorData
    uint32 x
    uint32 y
    uint32 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new xServerMsg(null);
    if (msg.sensor !== undefined) {
      resolved.sensor = msg.sensor;
    }
    else {
      resolved.sensor = 0
    }

    if (msg.taxel !== undefined) {
      resolved.taxel = msg.taxel;
    }
    else {
      resolved.taxel = 0
    }

    if (msg.xyz !== undefined) {
      resolved.xyz = xSensorData.Resolve(msg.xyz)
    }
    else {
      resolved.xyz = new xSensorData()
    }

    return resolved;
    }
};

module.exports = xServerMsg;
