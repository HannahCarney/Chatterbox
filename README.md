Chatterbox
==========
<a class="octicon-button tooltipped tooltipped-n js-update-url-with-hash"
                 aria-label="Clicking this button will fork this project so you can edit the file"
                 href="/makersacademy/chatterbox-challenge/edit/master/README.md"
                 data-method="post" rel="nofollow"><span class="octicon octicon-pencil"></span></a>

            <a class="octicon-button danger tooltipped tooltipped-s"
               href="/makersacademy/chatterbox-challenge/delete/master/README.md"
               aria-label="Fork this project and delete file"
               data-method="post" data-test-id="delete-blob-file" rel="nofollow">
          <span class="octicon octicon-trashcan"></span>
        </a>
      </div><!-- /.actions -->
    </div>
    
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

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" class="js-jump-to-line-form">
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" autofocus>
    <button type="submit" class="button">Go</button>
  </form>
</div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer" role="contentinfo">
    <ul class="site-footer-links right">
      <li><a href="https://status.github.com/">Status</a></li>
      <li><a href="https://developer.github.com">API</a></li>
      <li><a href="http://training.github.com">Training</a></li>
      <li><a href="http://shop.github.com">Shop</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="/about">About</a></li>

    </ul>

    <a href="/" aria-label="Homepage">
      <span class="mega-octicon octicon-mark-github" title="GitHub"></span>
    </a>

    <ul class="site-footer-links">
      <li>&copy; 2014 <span title="0.04982s from github-fe135-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="/site/terms">Terms</a></li>
        <li><a href="/site/privacy">Privacy</a></li>
        <li><a href="/security">Security</a></li>
        <li><a href="/contact">Contact</a></li>
    </ul>
  </div><!-- /.site-footer -->
</div><!-- /.container -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-suggester-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="fullscreen-contents js-fullscreen-contents" placeholder=""></textarea>
      <div class="suggester-container">
        <div class="suggester fullscreen-suggester js-suggester js-navigation-container"></div>
      </div>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped tooltipped-w" aria-label="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped tooltipped-w"
      aria-label="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-x flash-close js-ajax-error-dismiss" aria-label="Dismiss error"></a>
      Something went wrong with that request. Please try again.
    </div>


      <script crossorigin="anonymous" src="https://assets-cdn.github.com/assets/frameworks-153d6254b838872c8db73c8bd92905913f6f5b2164b7e40e5292286bd5a39403.js" type="text/javascript"></script>
      <script async="async" crossorigin="anonymous" src="https://assets-cdn.github.com/assets/github-886fe84cd93793c0e83129f222d7621e25bd43d46a8da650ab27872729a03871.js" type="text/javascript"></script>
      
      
  </body>
</html>
