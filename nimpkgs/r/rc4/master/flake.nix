{
  description = ''RC4 library implementation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-RC4-master.flake = false;
  inputs.src-RC4-master.owner = "OHermesJunior";
  inputs.src-RC4-master.ref   = "master";
  inputs.src-RC4-master.repo  = "nimRC4";
  inputs.src-RC4-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-RC4-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-RC4-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}