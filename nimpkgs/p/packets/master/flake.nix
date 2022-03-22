{
  description = ''Pure Nim declarative packets system for serializing/deserializing'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-packets-master.flake = false;
  inputs.src-packets-master.ref   = "refs/heads/master";
  inputs.src-packets-master.owner = "Q-Master";
  inputs.src-packets-master.repo  = "packets.nim";
  inputs.src-packets-master.type  = "github";
  
  inputs."packedjson".owner = "nim-nix-pkgs";
  inputs."packedjson".ref   = "master";
  inputs."packedjson".repo  = "packedjson";
  inputs."packedjson".dir   = "0_2_2";
  inputs."packedjson".type  = "github";
  inputs."packedjson".inputs.nixpkgs.follows = "nixpkgs";
  inputs."packedjson".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."crc32".owner = "nim-nix-pkgs";
  inputs."crc32".ref   = "master";
  inputs."crc32".repo  = "crc32";
  inputs."crc32".dir   = "";
  inputs."crc32".type  = "github";
  inputs."crc32".inputs.nixpkgs.follows = "nixpkgs";
  inputs."crc32".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-packets-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-packets-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}