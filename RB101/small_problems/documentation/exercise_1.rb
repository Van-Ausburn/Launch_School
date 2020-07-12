# exercise_1.rb

#[File:: path - https://ruby-doc.org/core-2.7.1/File.html#method-c-path]
# path(path) → string
# Returns the string representation of the path

File.path("/dev/null")          #=> "/dev/null"
File.path(Pathname.new("/tmp")) #=> "/tmp"

 static VALUE
rb_file_s_path(VALUE klass, VALUE fname)
{
    return rb_get_path(fname);
}

#[File#path - https://ruby-doc.org/core-2.7.1/File.html#method-i-path]
# Returns the pathname used to create file as a string. Does not normalize the name.

# The pathname may not point to the file corresponding to file. For instance, the pathname
# becomes void when the file has been moved or deleted.

# This method raises IOError for a file created using File::Constants::TMPFILE because they don't
# have a pathname.

File.new("testfile").path               #=> "testfile"
File.new("/tmp/../tmp/xxx", "w").path   #=> "/tmp/../tmp/xxx"

              static VALUE
rb_file_path(VALUE obj)
{
    rb_io_t *fptr;

    fptr = RFILE(rb_io_taint_check(obj))->fptr;
    rb_io_check_initialized(fptr);

    if (NIL_P(fptr->pathv)) {
        rb_raise(rb_eIOError, "File is unnamed (TMPFILE?)");
    }

    return rb_str_dup(fptr->pathv);
}
