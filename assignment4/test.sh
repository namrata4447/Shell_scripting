# Basic syntax:
ls /path/to/directory/

# Example usage 1:
ls /path/to/directory/ > output_file.txt # Write the files to an output
# Example usage 2:
ls /path/to/directory/ | grep *.txt > output_file.txt # Write the subset
# of files that match the grep search (e.g. end in .txt)
