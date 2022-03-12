{
  description = ''Pure nim fuzzy search implementation. Supports substrings etc'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-fuzzy-master.flake = false;
  inputs.src-fuzzy-master.owner = "pigmej";
  inputs.src-fuzzy-master.ref   = "refs/heads/master";
  inputs.src-fuzzy-master.repo  = "fuzzy";
  inputs.src-fuzzy-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-fuzzy-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-fuzzy-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}