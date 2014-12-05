Chatterbox
==========

    
  <div id="readme" class="blob instapaper_body">
    <article class="markdown-body entry-content" itemprop="mainContentOfPage"><h1>
<a id="user-content-chatterbox-challenge" class="anchor" href="#chatterbox-challenge" aria-hidden="true"><span class="octicon octicon-link"></span></a>Chatterbox Challenge</h1>

<h2>
<a id="user-content-instructions" class="anchor" href="#instructions" aria-hidden="true"><span class="octicon octicon-link"></span></a>Instructions</h2>

<ul class="task-list">
<li>Test time: up to you</li>
<li>Feel free to use google, your notes, books, etc but work on your own</li>
<li>You'll almost certainly need to google some things. This is deliberate.</li>
<li>In particular you'll want to read up on "Regular Expressions"</li>
<li><strong><em>Please ensure that all your code is committed to a repo named 'chatterbox'</em></strong></li>
</ul>

<h2>
<a id="user-content-tasks" class="anchor" href="#tasks" aria-hidden="true"><span class="octicon octicon-link"></span></a>Tasks:</h2>

<p>First place the chatbot below in a file such as 'chatbot.rb', run it from the command line and then experiment chatting with it:</p>

<div class="highlight highlight-ruby"><pre><span class="pl-k">def</span> <span class="pl-en">get_response</span>(<span class="pl-vpf">input</span>)
  key <span class="pl-k">=</span> <span class="pl-s3">RESPONSES</span>.keys.select {|<span class="pl-vo">k</span>| <span class="pl-sr"><span class="pl-pds">/</span><span class="pl-pse">#{</span><span class="pl-s2">k</span><span class="pl-pse"><span class="pl-s2">}</span></span><span class="pl-pds">/</span></span> <span class="pl-k">=~</span> input }.sample
  <span class="pl-sr"><span class="pl-pds">/</span><span class="pl-pse">#{</span><span class="pl-s2">key</span><span class="pl-pse"><span class="pl-s2">}</span></span><span class="pl-pds">/</span></span> <span class="pl-k">=~</span> input
  response <span class="pl-k">=</span> <span class="pl-s3">RESPONSES</span>[key]
  response.nil? <span class="pl-k">?</span> <span class="pl-s1"><span class="pl-pds">'</span>sorry?<span class="pl-pds">'</span></span> : response <span class="pl-k">%</span> { <span class="pl-c1">c1:</span> <span class="pl-vo">$1</span>, <span class="pl-c1">c2:</span> <span class="pl-vo">$2</span>}
<span class="pl-k">end</span>

<span class="pl-vo">RESPONSES</span> <span class="pl-k">=</span> { <span class="pl-s1"><span class="pl-pds">'</span>goodbye<span class="pl-pds">'</span></span> =&gt; <span class="pl-s1"><span class="pl-pds">'</span>bye<span class="pl-pds">'</span></span>, 
              <span class="pl-s1"><span class="pl-pds">'</span>sayonara<span class="pl-pds">'</span></span> =&gt; <span class="pl-s1"><span class="pl-pds">'</span>sayonara<span class="pl-pds">'</span></span>, 
              <span class="pl-s1"><span class="pl-pds">'</span>the weather is (.*)<span class="pl-pds">'</span></span> =&gt; <span class="pl-s1"><span class="pl-pds">'</span>I hate it when it<span class="pl-cce">\'</span>s %{c1}<span class="pl-pds">'</span></span>, 
              <span class="pl-s1"><span class="pl-pds">'</span>I love (.*)<span class="pl-pds">'</span></span> =&gt; <span class="pl-s1"><span class="pl-pds">'</span>I love %{c1} too<span class="pl-pds">'</span></span>, 
              <span class="pl-s1"><span class="pl-pds">'</span>I groove to (.*) and (.*)<span class="pl-pds">'</span></span> =&gt; <span class="pl-s1"><span class="pl-pds">'</span>I love %{c1} but I hate %{c2}<span class="pl-pds">'</span></span>}

puts <span class="pl-s1"><span class="pl-pds">"</span>Hello, what's your name?<span class="pl-pds">"</span></span>
name <span class="pl-k">=</span> gets.chomp
puts <span class="pl-s1"><span class="pl-pds">"</span>Hello <span class="pl-pse">#{</span><span class="pl-s2">name</span><span class="pl-pse"><span class="pl-s2">}</span></span><span class="pl-pds">"</span></span>
<span class="pl-k">while</span>(input <span class="pl-k">=</span> gets.chomp) <span class="pl-k">do</span>
  puts get_response(input)
<span class="pl-k">end</span></pre></div>

<p>It should go something like this:</p>

<pre><code>→ ruby chatbot.rb 
Hello, what's your name?
Dan
Hello Dan
the weather is clement
I hate it when it's clement
I love noodles
I love noodles too
I groove to funk and soul
I love funk but I hate soul
goodbye
bye
</code></pre>

<ol class="task-list">
<li>add at least five more responses so that the bot has a bigger range of conversation</li>
<li>add at least another two more responses that use regex capture groups - that's the <code>%{c1}</code> being replaced with whatever matched the brackets <code>(.*)</code> in the regular expression.  In Ruby regex capture groups are stored in <code>$1</code>, <code>$2</code> etc after a regex match takes place</li>
<li>extend the bot so that there is a key word, e.g. "quit" that will end the session</li>
<li>add a prompt in front of each sentence to indicate if either the person or the bot is talking</li>
<li>make the bot and the person's chat different colours</li>
<li>extend the bot so that it can handle more than two regular expression capture groups</li>
<li>extend the bot to that the user can add new kinds of responses through the chat interaction</li>
<li>extend the bot so that the set of responses is saved to a file and reloaded when the bot restarts</li>
</ol>

<p>Resources:</p>

<ul class="task-list">
<li><a href="http://rubylearning.com/satishtalim/ruby_regular_expressions.html">Ruby Regular Expressions Tutorial</a></li>
<li><a href="http://www.ralfebert.de/archive/ruby/regex_cheat_sheet/">Ruby Regex Cheat Sheet</a></li>
<li><a href="http://en.wikipedia.org/wiki/ELIZA">Eliza Chat Bot</a></li>
</ul>
</article>
  </div>

  </div>
</div>


        


