{
  description = ''Easy to use OTP library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-otplib-master.flake = false;
  inputs.src-otplib-master.owner = "dimspith";
  inputs.src-otplib-master.ref   = "master";
  inputs.src-otplib-master.repo  = "otplib";
  inputs.src-otplib-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-otplib-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-otplib-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}