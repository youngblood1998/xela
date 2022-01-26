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

class XelaSensorXYZRequest {
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
    // Serializes a message object of type XelaSensorXYZRequest
    // Serialize message field [sensor]
    bufferOffset = _serializer.int16(obj.sensor, buffer, bufferOffset);
    // Serialize message field [taxel]
    bufferOffset = _serializer.int16(obj.taxel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type XelaSensorXYZRequest
    let len;
    let data = new XelaSensorXYZRequest(null);
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
    return 'xela_server/XelaSensorXYZRequest';
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
    const resolved = new XelaSensorXYZRequest(null);
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

class XelaSensorXYZResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.values = null;
    }
    else {
      if (initObj.hasOwnProperty('values')) {
        this.values = initObj.values
      }
      else {
        this.values = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type XelaSensorXYZResponse
    // Serialize message field [values]
    bufferOffset = _arraySerializer.uint32(obj.values, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type XelaSensorXYZResponse
    let len;
    let data = new XelaSensorXYZResponse(null);
    // Deserialize message field [values]
    data.values = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.values.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'xela_server/XelaSensorXYZResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '32a5ae1cdb19681174e2cdd288a54bfa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32[] values
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new XelaSensorXYZResponse(null);
    if (msg.values !== undefined) {
      resolved.values = msg.values;
    }
    else {
      resolved.values = []
    }

    return resolved;
    }
};

module.exports = {
  Request: XelaSensorXYZRequest,
  Response: XelaSensorXYZResponse,
  md5sum() { return '2f5e77e17dc96027c90e428d83f92b92'; },
  datatype() { return 'xela_server/XelaSensorXYZ'; }
};
