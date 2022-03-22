{
  description = ''Full-featured CRC library for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-w8crc-master.flake = false;
  inputs.src-w8crc-master.ref   = "refs/heads/master";
  inputs.src-w8crc-master.owner = "sumatoshi";
  inputs.src-w8crc-master.repo  = "w8crc";
  inputs.src-w8crc-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-w8crc-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-w8crc-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}