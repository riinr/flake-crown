{
  description = ''ed25519 key crypto bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ed25519-master.flake = false;
  inputs.src-ed25519-master.owner = "niv";
  inputs.src-ed25519-master.ref   = "master";
  inputs.src-ed25519-master.repo  = "ed25519.nim";
  inputs.src-ed25519-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ed25519-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ed25519-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}