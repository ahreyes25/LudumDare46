/// @param filename

var _filename = argument0;

if (!file_exists(_filename)) return undefined;

// Load Buffer File
var _buffer_compressed = buffer_load(_filename);

// Decompress Buffer
var _buffer_encoded		 = buffer_decompress(_buffer_compressed);
buffer_seek(_buffer_encoded, buffer_seek_start, 0);
var _data_string_encoded = buffer_read(_buffer_encoded, buffer_text);

// Decode Buffer
var _buffer			= buffer_base64_decode(_data_string_encoded);
buffer_seek(_buffer, buffer_seek_start, 0);
var _data_string	= buffer_read(_buffer, buffer_text);
var _data_map		= json_decode(_data_string);

// Cleanup
buffer_delete(_buffer);
buffer_delete(_buffer_compressed);
buffer_delete(_buffer_encoded);

// Return Bufer Data
return _data_map;