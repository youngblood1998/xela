// Auto-generated. Do not edit!

// (in-package xela_server.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let SensPoint = require('../msg/SensPoint.js');

//-----------------------------------------------------------

class XelaSensorStreamRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sensor = null;
    }
    else {
      if (initObj.hasOwnProperty('sensor')) {
        this.sensor = initObj.sensor
      }
      else {
        this.sensor = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type XelaSensorStreamRequest
    // Serialize message field [sensor]
    bufferOffset = _serializer.int16(obj.sensor, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type XelaSensorStreamRequest
    let len;
    let data = new XelaSensorStreamRequest(null);
    // Deserialize message field [sensor]
    data.sensor = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'xela_server/XelaSensorStreamRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2450d5ef97d4f00e6a15b267632df2ea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 sensor
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new XelaSensorStreamRequest(null);
    if (msg.sensor !== undefined) {
      resolved.sensor = msg.sensor;
    }
    else {
      resolved.sensor = 0
    }

    return resolved;
    }
};

class XelaSensorStreamResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.xyz = null;
    }
    else {
      if (initObj.hasOwnProperty('xyz')) {
        this.xyz = initObj.xyz
      }
      else {
        this.xyz = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type XelaSensorStreamResponse
    // Serialize message field [xyz]
    // Serialize the length for message field [xyz]
    bufferOffset = _serializer.uint32(obj.xyz.length, buffer, bufferOffset);
    obj.xyz.forEach((val) => {
      bufferOffset = SensPoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type XelaSensorStreamResponse
    let len;
    let data = new XelaSensorStreamResponse(null);
    // Deserialize message field [xyz]
    // Deserialize array length for message field [xyz]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.xyz = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.xyz[i] = SensPoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 12 * object.xyz.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'xela_server/XelaSensorStreamResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a91068583885a730705f80278ef9b0b0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    SensPoint[] xyz
    
    ================================================================================
    MSG: xela_server/SensPoint
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
    const resolved = new XelaSensorStreamResponse(null);
    if (msg.xyz !== undefined) {
      resolved.xyz = new Array(msg.xyz.length);
      for (let i = 0; i < resolved.xyz.length; ++i) {
        resolved.xyz[i] = SensPoint.Resolve(msg.xyz[i]);
      }
    }
    else {
      resolved.xyz = []
    }

    return resolved;
    }
};

module.exports = {
  Request: XelaSensorStreamRequest,
  Response: XelaSensorStreamResponse,
  md5sum() { return '418a22b0f7ffc7c2608fbc4b499d5ce5'; },
  datatype() { return 'xela_server/XelaSensorStream'; }
};
