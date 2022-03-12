{
  description = ''libmagic for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-magic-master.flake = false;
  inputs.src-magic-master.owner = "xmonader";
  inputs.src-magic-master.ref   = "refs/heads/master";
  inputs.src-magic-master.repo  = "nim-magic";
  inputs.src-magic-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-magic-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-magic-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}