{
  description = ''BMP encoder and decoder'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimBMP-v0_1_6.flake = false;
  inputs.src-nimBMP-v0_1_6.owner = "jangko";
  inputs.src-nimBMP-v0_1_6.ref   = "v0_1_6";
  inputs.src-nimBMP-v0_1_6.repo  = "nimBMP";
  inputs.src-nimBMP-v0_1_6.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimBMP-v0_1_6"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimBMP-v0_1_6";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}