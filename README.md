# b64gz

Small script used to generate a base64 encoded gzip string that later can be included in a script (with the function 'b64gzimport' in this repository) as a one liner in case of failed minification due to advanced script structure.

## Usage
When running b64gz.sh, $1 must be either 'file' or 'stdin'. Depending on the previous input, the script will either read and encode the file supplied in $2 or attempt to encode $@ except for $1.

When running b64gzimport, input should be $1 and optionally $2, where $1 is a string generated by b64gz.sh and $2 is either 'evaluate' or 'print'(defaults to evaluate), to either execute the content of the string or print it to stdout

