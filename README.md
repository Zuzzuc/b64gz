# b64gz

Small script used to generate a base64 encoded gzip string that later can be included in a script (with the function 'b64gzimport' in this repository) as a one liner in case of failed minification due to advanced script structure.

## Usage
When running b64gz.sh, $1 must be either 'file' or 'stdin'. Depending on the previous input, the script will either read and encode the file supplied in $2 or attempt to encode $@ except for $1.
