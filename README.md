# EmeraldC
The Ultimate C Preprocessor


I'm naming this preprocessor "Emerald C."

https://cboard.cprogramming.com/c-programming/181160-hi-i-have-created-some-work-i-think-will-really-valuable-community.html?s=589b5504cd0e3c2dc90e9abd8b66906f



Howdy!

First, let me state that I am very much a perfectionist.


C is a wonderful language. C is probably the perfect programming language. It is one of the top two most widely used languages for a reason.


Now, there are some problems with it of course, but it's hard to think of a more elegant language than it.


It is the language of systems, the language almost all APIs are written in.


It is the lingua franca of the software world.

People try to avoid it, but they needn't.

I think every programmer wants to find out how to do things, or use libraries that make things easier.

Many programmers have done programming, grown dissatisfied, and then make another language. As a result, there are thousands of different languages.


Well, recently, I made a preprocessor for C, that makes C incredibly EASY.


C is fast and straightforward without it, but it has many features.




If one runs the command line preprocessor, with the "--features" flag, the program shows all of its features


--------------------------
<h3>A Better C</h3>
--------------------------

C is a fantastic language. C compiles insanely fast, is the fastest language there is, is very clear, is native to all systems, and is useful for all purposes.

Some people, e.g., Bjarne Stroustrup, consider that C is "not good enough", and make languages like C++ or D (or thousands of others)   

This is not necessary.

There is no reason to use Python instead of C for "simple scripting tasks"

Some functions can be used as methods

Makes for an excellent "scripting language" (which is really just native C without things making it slow)


1      String     Interpolation "String interplation like this #{foo} " Calls the join() function (talked about below to join strings,
delim is a static global in each module called "sep".
Make sure you free() the string after. The string is stored in a static global variable called "last".
So you could do puts(...); free(last)

2      ew     *i.ew "Foo", a.ew "bar" | char* ends with another char*?

3      sw     *i.sw "Foo", a.sw "bar" | char* starts with another char*?

4      ==     Comparison of strs, "foo" == "bar"

5      strip     Returns pointer to string that was stripped, in place

6      chomp     void function, chomps end of string of spaces, i.chomp or chomp(i), in place

7      gsub     Just like ruby, there is a gsub function.
The preprocessor detects if you use and adds -lpcre2-8 to the link flags if you use it. Use $" for substitutions in argument 3 gsub(a, b, c)

8      join     Joins an array of strings, to split(), use C's strtok (very fast)

9      Lightweight     regexes are added, almost 15 times as fast as C's built in regex. They are very simple, they only have bracket expressions, like [a-z].

To use it, you need to pass a buffer of the size of the expansion of the regex. Foo[a-fA-F] would be Foo[abcdefABCDEF]. That would be stored in a buffer.

From testing, 15x times faster than C's regex POST COMPILATION, if compilation keeps happening, it might be hundreds of times faster. 
Uses static inline functions, NO HEAP MEMORY unless you malloc before().

10      print     Like old python print "Hello" (fputs);

11      print_int     prints a number and returns the number, can be chained

12      each_line,     Perlish, different names, by_line(s) or each_line(s), iterate over all lines, free after

13      NOTE     You can use open_memstream() on UNIX to easily concatenate strings.

asprintf() is another useful function which is UNIX-centric. open_memstream() could be an alternative to std::string.
It works very well with each_line or by_lines (see above)
These features seem simple, but they can make C programming much, MUCH easier

for example (insignificant example)



<pre>
<code>
int main() {
    stdin.each_line { |line|
        print line;
    }

    free(line);
}
</code></pre>
You can iterate over the standard input like Ruby


The thing with this is that it has 100% speed. The resultant preprocessed program becomes a normal C program



The compile and run time for a program (if you use tcc and not gcc) can be about 24 milliseconds, which is faster than Ruby to run.


Even though the program is preprocessed, re-preprocessed, compiled, assembled, linked, turned into an executable, and then run


Kind of like early C++, this is a preprocessor for C.

But it's much faster to compile than C++. Significantly so.

Is anyone else interested in this? (BSD)


I'm realising this under the BSD license. I'm interested if anyone else else likes this work, and would like to use it, or to work with me.

Best regards,

Gregory


Current program is written in Crystal (crystal-lang.org) -- it was written in ruby, it could be ported to another language.

I would like to make this self-hosting, but that would take a little bit of work.

<h2>About the Name</h2>


Years ago, I really, really liked Compiz


Compiz then forked into Beryl. There was the Emerald Window Manager, which was really nice and beautiful.


I actually made another programming language. I made 2 other programming language. One was a full compiler and assembler, that ran code in memory. It was around 16 thousand lines of code. I made a programming language that had the syntax of Python or Ruby, but transpiled into C++. I called that C += 2. I used that other language, and I created a Web Browser in it based on Chrome. I called it "Emerald Browser." Emeralds are beautiful green gems.


<div style='color:green'>
    "Emerald is a gemstone and a variety of the mineral beryl colored green by trace amounts of chromium or sometimes vanadium. Beryl has a hardness of 7.5???8 on the Mohs scale. Most emeralds are highly included, so their toughness is classified as generally poor. Emerald is a cyclosilicate."</i> --Wikipedia
</div>

There was a browser with a terminal built in to it.

I show things off on my youtube channel, which I'm not going to link here but is linked in my other repo.

This new language is better. It's ideal.

---
QUESTIONS
---

Why not use Rust?


<pre><code>$ time rustc a.rs
real	0m0.637s
user	0m0.502s
sys	0m0.160s</code></pre>


Rust takes 0.637 seconds to compile an empty file!

That is not ideal.
