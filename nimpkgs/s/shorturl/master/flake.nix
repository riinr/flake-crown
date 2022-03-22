{
  description = ''Nim module for generating URL identifiers'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-shorturl-master.flake = false;
  inputs.src-shorturl-master.ref   = "refs/heads/master";
  inputs.src-shorturl-master.owner = "achesak";
  inputs.src-shorturl-master.repo  = "nim-shorturl";
  inputs.src-shorturl-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-shorturl-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-shorturl-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}