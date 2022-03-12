{
  description = ''Wrapper that implements some of wiringPi's function for controlling a Raspberry Pi'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-wiringPiNim-master.flake = false;
  inputs.src-wiringPiNim-master.owner = "ThomasTJdev";
  inputs.src-wiringPiNim-master.ref   = "refs/heads/master";
  inputs.src-wiringPiNim-master.repo  = "nim_wiringPiNim";
  inputs.src-wiringPiNim-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-wiringPiNim-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-wiringPiNim-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}