{
  description = ''Wrapper that implements some of wiringPi's function for controlling a Raspberry Pi'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."wiringpinim-master".dir   = "master";
  inputs."wiringpinim-master".owner = "nim-nix-pkgs";
  inputs."wiringpinim-master".ref   = "master";
  inputs."wiringpinim-master".repo  = "wiringpinim";
  inputs."wiringpinim-master".type  = "github";
  inputs."wiringpinim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wiringpinim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}