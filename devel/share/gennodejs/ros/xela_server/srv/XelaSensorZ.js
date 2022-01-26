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


//-----------------------------------------------------------

class XelaSensorZRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sensor = null;
      this.taxel = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type XelaSensorZRequest
    // Serialize message field [sensor]
    bufferOffset = _serializer.int16(obj.sensor, buffer, bufferOffset);
    // Serialize message field [taxel]
    bufferOffset = _serializer.int16(obj.taxel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type XelaSensorZRequest
    let len;
    let data = new XelaSensorZRequest(null);
    // Deserialize message field [sensor]
    data.sensor = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [taxel]
    data.taxel = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'xela_server/XelaSensorZRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'abc4ffca4d7aa5f898e56c9536039266';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 sensor
    int16 taxel
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new XelaSensorZRequest(null);
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

    return resolved;
    }
};

class XelaSensorZResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type XelaSensorZResponse
    // Serialize message field [value]
    bufferOffset = _serializer.uint32(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type XelaSensorZResponse
    let len;
    let data = new XelaSensorZResponse(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'xela_server/XelaSensorZResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd9d213e8c146065ec958333c617eb1a6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new XelaSensorZResponse(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: XelaSensorZRequest,
  Response: XelaSensorZResponse,
  md5sum() { return 'fc5714e73aa3fe2b97b854cd8a61a925'; },
  datatype() { return 'xela_server/XelaSensorZ'; }
};
