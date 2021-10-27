syntax on

set mouse=a
set nu

iabbrev di #ifndef SAMPLE_HPP<CR>
\# define SAMPLE_HPP<CR><CR><CR><CR>
\#endif

iabbrev bhpp class Sample {<CR><CR>
\<Tab>public:<CR><CR>
\<Tab><Tab>Sample();<CR>
\<Tab><Tab>Sample(const Sample& src);<CR>
\<Tab><Tab>virtual ~Sample();<CR><CR>
\<Tab><Tab>operator=(const Sample& rhs);<CR><CR>
\<Tab>private:<CR><CR>
\<Tab><Tab>// Attributes<CR><CR>
\};

iabbrev bcpp #include "Sample.hpp"<CR><CR>
\Sample::Sample() /* : _attribute(value) */ {}<CR><CR>
\Sample::Sample(const Sample &src) /* : _attribute(src._attribute) */ {}<CR><CR>
\Sample::~Sample() {}<CR><CR>
\Sample&<Tab>Sample::operator=(const Sample &rhs) {<CR><CR>
\<Tab>if (this == &rhs) {<CR>
\<Tab><Tab>return *this;<CR>
\<Tab>}<CR><CR>
\<Tab>return *this;<CR>
\}