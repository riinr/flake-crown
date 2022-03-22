{
  description = ''URI and URL parsing for Nim for C/JS backends. Similar api to browsers's `window.location`.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-urlly-master.flake = false;
  inputs.src-urlly-master.ref   = "refs/heads/master";
  inputs.src-urlly-master.owner = "treeform";
  inputs.src-urlly-master.repo  = "urlly";
  inputs.src-urlly-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-urlly-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-urlly-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}