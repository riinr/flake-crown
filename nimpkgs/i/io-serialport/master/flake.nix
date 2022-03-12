{
  description = ''Obsolete - please use serialport instead!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-io-serialport-master.flake = false;
  inputs.src-io-serialport-master.owner = "nimious";
  inputs.src-io-serialport-master.ref   = "refs/heads/master";
  inputs.src-io-serialport-master.repo  = "io-serialport";
  inputs.src-io-serialport-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-io-serialport-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-io-serialport-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}