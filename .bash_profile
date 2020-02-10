############################################
## Load my aliases, prompt, exports, etc. ##
############################################

# Use *.local for any of the following files for untracked overrides
for file in ~/.{bash_aliases,bash_prompt,bash_exports,bash_functions}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
    [ -r "${file}.local" ] && [ -f "${file}.local" ] && source "${file}.local"
done;
unset file;

