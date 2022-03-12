{
  description = ''Find and Edit Utility'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-fae-master.flake = false;
  inputs.src-fae-master.owner = "h3rald";
  inputs.src-fae-master.ref   = "refs/heads/master";
  inputs.src-fae-master.repo  = "fae";
  inputs.src-fae-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-fae-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-fae-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}