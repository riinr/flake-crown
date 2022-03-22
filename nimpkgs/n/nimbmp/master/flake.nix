{
  description = ''BMP encoder and decoder'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimBMP-master.flake = false;
  inputs.src-nimBMP-master.ref   = "refs/heads/master";
  inputs.src-nimBMP-master.owner = "jangko";
  inputs.src-nimBMP-master.repo  = "nimBMP";
  inputs.src-nimBMP-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimBMP-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimBMP-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}