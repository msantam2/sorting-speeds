# Sorting Speeds

<img src="https://github.com/msantam2/sorting-speeds/blob/master/images/sort_times.png" width="600" height="200" />

This is a fun comparison of various sorting algorithms!

This is just a simple experiment I wanted to perform to see the actual time it takes different sorting algorithms to sort a completely reversed 1000 item array (worst-case scenario).

We always hear about and analyze the time complexities of different sorting algorithms, but I wanted to see it in action.

(I am assuming a normal, ascending sort, i.e. no Procs are passed to alter the sorting behavior)

--------

## Adding Sorts Yourself

If you want to experiment with more sorts on your own machine, you can do so! The structure of `sort_comparisons.rb` makes this very easy with the following code.

```rb
sorts = Dir["./sorts/*.rb"].map do |file|
  File.basename(file, File.extname(file)).to_sym
end

times = {}

sorts.each do |sort|
  a = Time.now
  method(sort).call((1..1000).to_a.reverse)
  b = Time.now
  time = b - a
  times["#{sort}"] = time
end
```
The program imports all files from the `sorts` directory and uses those filenames to call each corresponding sorting method. This way, to add a sort all you need to do is create a file in `sorts` with the name `your_sort.rb`. Make sure the name of the sorting method is the same as the file that contains it (i.e. `bubble_sort.rb` contains the method `bubble_sort(arr)`). That is it, you only need to write the method definition and you are set. 

### Run this Code

1. Run ```git clone https://github.com/msantam2/sorting-speeds.git``` from the CLI (You will need to have Ruby installed on your system)

2. Navigate to your Sorting Speeds directory.

3. Run ```ruby sort_comparisons.rb``` from the command line. To add more sorts simply create a file `your_sort.rb` in the `sorts` directory that contains the sorting method `your_sort(arr)`.

--------

## To-Do

- Add more sorts! There are a lot of them...

- Create a table that outlines some basic properties of each sort (recursive vs. iterative, time complexity, space complexity)
