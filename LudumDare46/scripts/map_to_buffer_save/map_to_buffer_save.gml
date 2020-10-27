/// @param ds_map
/// @param file_name

var _save_data	= argument0;
var _filename	= argument1;

// Construct Data String & Write to Buffer
var _json_string = json_encode(_save_data);
var _buffer_size = string_length(_json_string);
var _buffer		 = buffer_create(_buffer_size, buffer_fixed, 1);
buffer_seek(_buffer, buffer_seek_start, 0);
buffer_write(_buffer, buffer_text, _json_string);

// Encode Buffer
var _encoded_string	= buffer_base64_encode(_buffer, 0, _buffer_size);
var _buffer_size	= string_length(_encoded_string);
var _buffer_encoded	= buffer_create(_buffer_size, buffer_fixed, 1);
buffer_seek(_buffer_encoded,  buffer_seek_start, 0);
buffer_write(_buffer_encoded, buffer_text, _encoded_string);

// Compress Buffer
var _buffer_compressed = buffer_compress(_buffer_encoded, 0, _buffer_size);
buffer_save(_buffer_compressed, _filename);

// Cleanup
buffer_delete(_buffer);
buffer_delete(_buffer_compressed);
buffer_delete(_buffer_encoded);