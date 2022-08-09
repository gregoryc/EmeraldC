require "colorize"

class String
  def bold
colorize.bold

#    colorize :bold
  end

  def blue
    colorize :blue
  end

  def red
    colorize :red
  end
end

if ARGV[0] == "--features"
  count = 0
  # eq
  # require "colored"

  puts "A better C".blue.bold
  puts "C is a fantastic language. C compiles insanely fast, is the fastest language there is, is very clear, is native to all systems, and is useful for all purposes.".blue.bold

  puts "Some people, e.g., Bjarne Stroustrup, consider that C is `not good enough`, and make languages like C++ or D (or thousands of others)".blue.bold
  puts "This is not necessary.".blue.bold
  puts "There is not reason to use Python instead of C for `simple scripting tasks`".blue.bold

  # puts

  puts "Some functions can be used as methods".blue.bold
  puts "Makes for an excellent `scripting language` (which is really just native C without things making it slow)".blue.bold

  puts

  "
  String Interpolation \"String interplation like this \#{foo} \" Calls the join() function (talked about below to join strings, delim is a static global in each module called `sep`. Make sure you free() the string after. The string is stored in a static global variable called `last`.  So you could do puts(...); free(last)
  ew     *i.ew \"Foo\",   a.ew \"bar\"   | char* ends with another char*?
sw   *i.sw \"Foo\",   a.sw \"bar\"   | char* starts with another char*?
==   Comparison of strs,  \"foo\" == \"bar\"
strip Returns pointer to string that was stripped, in place
chomp  void function, chomps end of string of spaces, i.chomp  or chomp(i), in place
gsub   Just like ruby, there is a gsub function. The preprocessor detects if you use and adds -lpcre2-8 to the link flags if you use it.  Use \$\" for substitutions in argument 3     gsub(a, b, c)

join   Joins an array of strings, to split(), use C's strtok (very fast)
Lightweight regexes are added, almost 15 times as fast as C's built in regex.   They are very simple, they only have capture groups, like [a-z]. To use it, you need to pass a buffer of the size of the expansion of the regex. Foo[a-fA-F] would be Foo[abcdefABCDEF].   That would be stored in a buffer.    From testing, 15x times faster than C's regex POST COMPILATION, if compilation keeps happening, it might be hundres of times faster. Uses static inline functions, NO HEAP MEMORY unless you malloc before().





print Like old python print \"Hello\"(fputs);
print_int prints a number and returns the number, can be chained
each_line,    Perlish, different names,  by_line(s) or each_line(s), iterate over all lines, free after
NOTE     You can use open_memstream() on UNIX to easily concatinate strings.  asprintf() is another useful function which is UNIX-centric open_memstream() could be an alternative to std::string It works very well with each_line or by_lines (see above)


".strip.split("\n") do |i|
	next if i.strip == ""
    # puts
    str = String::Builder.build do |str|
      str << (count += 1).to_s.bold.blue
      # str = str.to_s.
      str << " "
      q = i.split
      str << "     "
      str << i.split[0].red
      str << "     "
      str << i.split[1..].join(' ').blue
    end

    # str << i.split[0].red
    # str << i.split[1..].bl
    # puts(str.blue)
    puts str

    #	str = (count += 1).to_s + " " +
    #	puts i
  end

  exit
end

s = File.read(ARGV[0])

# EOF

s = "
#include <stdlib.h>
#include <stddef.h>
#include <ctype.h>
#include <stdio.h>
#include <string.h>

#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
//static inline void print
static inline char match_chars(const char *restrict expr,
                               const char **restrict pattern) {
  // puts(pattern);
  (*pattern)++;
  //  puts(*pattern);
  const char val = *(expr);
  int res = 0;
  while (**pattern != ']') {
    // putchar(**pattern);

    //    putchar(val)d;

    if (val == **pattern) {
      res = 1;
    }
    ++*pattern;
    // return false;
  }

  ++*pattern;

  return res;
}
static inline void add(char a, const char b, size_t *restrict const i,
                       char *restrict const new_pattern) {
  ++a;

  while (a < b) {
    new_pattern[*i] = a++;
    (*i)++;
  }
}


static inline char match(const char *restrict expr, const char *pattern) {
  {
    // for (int i = 0; i < len; ++i) {
    while (*expr) {
      if (!*pattern) {
        return 1;
      }
      if (*pattern == '[') {
        int res = match_chars(expr, &pattern);
        if (!res) {
          //      	puts;
          return 0;
        }
        ++expr;
        //      continue;
        continue;
      }
      if (*expr == *pattern) {

        ++expr;
        ++pattern;
        continue; // continue;
      }           // else
      //        goto nexr, *pattern);
      //	
      return 0;

      //    next:
    }
  };
  return (!(*expr || *pattern));
}

static inline   void  setup_mini_reg(const char *pattern, char *buf) {
  size_t i = 0, i2 = 0;
  const size_t l = strlen(pattern);

  while (i < l) {
    if (pattern[i] == '-') {
      add(pattern[i - 1], pattern[i + 1], &i2,buf);

      ++i;
      continue;
    }

    (buf)[i2++] = pattern[i++];
  }

  (buf)[i2] = 0;
}

static inline unsigned int reg(const char *restrict expr,
                                const char *restrict const new_pattern) {
  for (; *expr; ++expr) {
    if (match(expr, new_pattern)) { //,  )) {
      return 1;
    } // else {
  }

  return 0;
}

/*void r(const char *const a, const char *b, int assert) {
  int ret;
  a = b;

    //	_exit(0);
  }
}
//#I
*/




#define    true 1
#define false  0
  //   void

  char* gsub  (const char* str, const char*     reg, const char* rep);


static void* last=NULL;
static char* sep=\"\";
static inline void chomp(char *s) {
    char *ptr;
    if (!s)
        return ;   // handle NULL string
    if (!*s)
        return ;      // handle empty string
    for (ptr = s + strlen(s) - 1; (ptr >= s) && isspace(*ptr); --ptr);
    ptr[1] = 0;
}



static inline char* strip(char* a) {
	while (isspace(*a)) {
		++a;
	}
	chomp(a);

	return a;
}


static inline int starts_with(const char *restrict string, const char *restrict prefix)
{
    while(*prefix)
    {
        if(*prefix++ != *string++)
            return 0;
    }

    return 1;
}
static inline int ends_with(const char *str, const char *suffix)
{
    if (!str || !suffix)
        return 0;
    size_t lenstr = strlen(str);
    size_t lensuffix = strlen(suffix);
    if (lensuffix >  lenstr)
        return 0;
    return strncmp(str + lenstr - lensuffix, suffix, lensuffix) == 0;
}
static inline const char* join(const char** strings, size_t num_strings, const char* seperator) {
    int input_strings_length = 0;
    for (int i = 0; i < num_strings; i++) {
        input_strings_length += strlen(strings[i]);
    }

    size_t string_length = input_strings_length + num_strings * strlen(seperator);
    char* joined = malloc((string_length + 1) * sizeof(char));
    joined[string_length]=0;

    int array_offset = 0;

    for (int string_index = 0; string_index < num_strings; string_index++) {
        if (string_index != 0) {
            strcpy(joined + array_offset, seperator);
            array_offset += strlen(seperator);
        }

        strcpy(joined + array_offset, strings[string_index]);
        array_offset += strlen(strings[string_index]);
    }

    return joined;
}


inline    static       size_t    print_int(size_t int) {
printf(\"%ld\n\", int);

return int;
}
" + s

s = s.gsub(/".+?"/) do |i|
  size = 0
  str = String::Builder.build do |str|
    #  str = St
    scanned = false
    is = [] of String
    ret = i[1..-2].gsub(/#\{.*?\}/) do |q|
      is.push q
      "|"
    end
    if ret == i[1..-2]
      # ret.prepend
      #puts "YES#{i}"
      str<<'"'
      str<<ret

      str<<'"'
      #    end
    else
    str << " (last=(void*)join( (const char*[]) { "
      #  if ret == i[2..
      #  if ret =
      ret = ret.split "|"
      #  puts is, ret
      # puts is.size if is !=[]
      # puts ret

      (ret.each do |i|
        q = is.shift || "" rescue ""

        str << '"'
        str << i
        str << '"'

        size += 1
        if ((q && q[2..-2] != nil) rescue false)
          str << ", "; size += 1
          str << q[2..-2]
        end
        str << ", "
      end);       str << "}, #{size},        sep )) "

    end

    
  end

  
  #  str
end

s = s.gsub /([a-zA-Z0-9]+)\.(?:by|each)_line[s]?\s*\{\s*\|\s*([^\n]+?)\s*(?:, ([^\n]+?))?\|/m do |i|
  length = $3.tr(", ", "") rescue ""
  length == "" && (length = "len")

  "char*#{$2}=0;ssize_t #{length}=0;size_t __size=0;while((#{length}=getline(&#{$2},&__size,#{$1}))!=-1){"
end

def func(num, a, b)
  case num
  when 1
    "strcmp(#{a},#{b})==0" # % [a, b]
  when 2
    "starts_with(#{a}, #{b})" # %[a, b]
  when 3
    "ends_with(#{a}, #{b})" # %[a, b]
  end
end

%w[== .sw .ew].each_with_index do |i, num|
  s = s.gsub /([\[\]\*\+a-zA-Z0-9]+)\s*#{i}\s*\s*(".*?")/ do |i|
    func(num + 1, $1, $2)
  end
end
s = s.gsub /([\)a-zA-Z0-9"]+)\.(strip|chomp|join)/, "\\2(\\1)" # do |i|

s = s.gsub /^#!.*?\n/m, ""

s = s.gsub /print\s+(.*?)\s*;*\s*\n/, "fputs(\\1,stdout)  ;\n"; ""
flags = ""


if s.match /gsub\s*\(/m
#if s.match /\gsub\s*(/m
flags += "-lpcre2-8"


s +=" 
#define PCRE2_CODE_UNIT_WIDTH 8
#include <pcre2.h>


char* gsub  (const char* str, const char*     reg, const char* rep) {
size_t outlen;
	static const char* error_str = \"DONT KNOW HOW TO ALLOCATE MEM FOR REGEX\";
	char* out = malloc(outlen =strlen(str) *      strlen(rep))  ;
	if (out == NULL) {
		error:
	fputs(error_str,   stderr);
return NULL;
	}

	
    int error;
    PCRE2_SIZE erroffset;
//                                       printf(\"       %l                             \", 
    const PCRE2_SPTR pattern = (PCRE2_SPTR)reg;
    const PCRE2_SPTR subject = (PCRE2_SPTR)str;
    const PCRE2_SPTR replacement = (PCRE2_SPTR)rep;

    pcre2_code *re = pcre2_compile(pattern, PCRE2_ZERO_TERMINATED, 0, &error, &erroffset, 0);
    if (re == 0) return NULL;
//        return 1;

    pcre2_jit_compile(re, PCRE2_JIT_COMPLETE);

    int rc = pcre2_substitute(re, subject, PCRE2_ZERO_TERMINATED, 0, PCRE2_SUBSTITUTE_GLOBAL | PCRE2_SUBSTITUTE_EXTENDED, 0, 0, replacement, PCRE2_ZERO_TERMINATED, out, &outlen);
    if (rc >= 0);
//        printf(%s\\n, output);

    pcre2_code_free(re);
    size_t new_len = strlen(out);
    char* new_out = realloc(out,new_len + 1);
    if (new_out == NULL) goto error;


    return   new_out;
   }

   "
end

#s = s.gsub /.gsub
File.write "out.c", s

puts "Running"
out = "a.out"

system "gcc -O3    -Wfatal-errors   -s out.c -o #{out} #{flags} && ./#{out} #{ARGV[1..].join(' ')}"




