# ~/.config/fish/functions/fish_prompt.fish
# name: Robbyrussell edited
# author: Bruno Ferreira Pinto, edit by Yuri Artemev
# see: https://gist.github.com/artemeff/6253889

function fish_prompt

  if not set -q -g __fish_robbyrussell_art_functions_defined
    set -g __fish_robbyrussell_art_functions_defined
    function _git_branch_name
      echo (git rev-parse --abbrev-ref HEAD ^/dev/null)
    end

    function _git_tag_name
      echo (git describe --tags --exact-match ^/dev/null)
    end

    function _is_git_dirty
      echo (git status -s --ignore-submodules=dirty ^/dev/null)
    end
  end

  set -l yellow (set_color -o yellow)
  set -l red (set_color -o red)
  set -l blue (set_color -o blue)
  set -l normal (set_color normal)

  set -l cwd $blue(prompt_pwd)

  if [ (_git_branch_name) ]
    set -l git_branch $yellow(_git_branch_name)

    if [ (_is_git_dirty) ]
      set git_branch $red(_git_branch_name)
    end

    set git_info "$blue ($git_branch$blue)"
  else if [ (_git_tag_name) ]
    set -l git_tag $yellow(_git_tag_name)

    if [ (_is_git_dirty) ]
      set git_tag $red(_git_tag_name)
    end

    set git_info "$blue (tag: $git_tag$blue)"
  end

  echo -n -s $cwd $git_info ' $ ' $normal
end