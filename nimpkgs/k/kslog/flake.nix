{
  description = ''Minimalistic Kernel-Syslogd For Linux in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."kslog-master".url = "path:./master";
  inputs."kslog-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kslog-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."kslog-v0_5".url = "path:./v0_5";
  inputs."kslog-v0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kslog-v0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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