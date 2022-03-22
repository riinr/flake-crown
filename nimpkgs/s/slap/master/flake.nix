{
  description = ''SLAP language'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-SLAP-master.flake = false;
  inputs.src-SLAP-master.ref   = "refs/heads/master";
  inputs.src-SLAP-master.owner = "bichanna";
  inputs.src-SLAP-master.repo  = "slap";
  inputs.src-SLAP-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-SLAP-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-SLAP-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}