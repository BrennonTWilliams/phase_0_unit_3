## Evaluate a Website! 
 
1) How does this website follow HTML Best Practices? Are there any places where 
it does not?  Provide examples of the "bad" code.

They correctly linked to the CSS file:

`` `
<link rel="stylesheet" type="text/css" href="news.css?8JynwWWhD1otKS3gym1e">
` ``

I'm not sure how I feel about voting being handled in the header, we've been taught to keep most information and content functions in the body:

`` `
function vote(node) {
        var v = node.id.split(/_/);
        // {'up', '123'}
        var item = v[1];
        
        // hide arrows
        byId('up_'   + item).style.visibility = 'hidden';
        byId('down_' + item).style.visibility = 'hidden';
        
        // ping server
        var ping = new Image();
        ping.src = node.href;
        
        return false;
        // cancel browser nav
      }
 ` ``

2) What do you think of the HTML? Did the writers use IDs and Classes properly? 

Some of the id tag names are pretty insane (ex "down_7790246") but presumably these are generated to handle each post. I would've tried to be a bit clearer, naming my example tag "downvote_7790246."

It also seems odd to me that they handle a lot of padding in the HTML rather than the CSS. 

It appears they've used classes correctly, as each element that uses a class reuses it. IDs are unique, as they should be.

Did you like the way they used HTML tags?  Please use examples with your arguments.

I don't like how much alignment is done in the HTML instead of the CSS. For example:

`` `
<td align=right valign=top class="title">
            2.
</td>
 ` ``

 Why not handle the alignment here in the CSS associated with the class "title"?


3) How did the authors handle formatting? Did they include it in the HTML or 
separate it into a CSS file? Or did they do both?  Again, include examples.

 CSS is kept in the CSS file (thank God), as I refrenced the code above:

 `` `
<link rel="stylesheet" type="text/css" href="news.css?8JynwWWhD1otKS3gym1e">
` ``

As I mentioned in the previous questions, however, they still do more alignment in the HTML than I would be comfortable with.
 
4) Did the authors include anything you didn't immediately understand? 
If so, what?

I wasn't sure at first what a "td" tag was, though I haven't done anything with HTML tables before.
 
5) How did the authors organize the CSS file? Was it DRY?

They used IDs to keep some of the repition to a minimum, but I was suprised to see again and again alignment being done in the HTML.

It's also terrible to read, even after formatting. I wonder if they could've done a bit more to keep the code under 1500+ lines.
 
6) Did the authors incorporate any responsive design into the site?

Yes. One of the things I like about HN is how I can read it on my phone. I'm a HN addict, usually reading it a few times a day.
 
7) What are your overall thoughts on the HTML/CSS from this website based on 
what you've read?

Not terribly readable, but it appears most of the HTML is generated from the backend so that's not too suprising.