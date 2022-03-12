{
  description = ''Declarative packets system for serializing/deserializing and marshalling'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-packets-master.flake = false;
  inputs.src-packets-master.owner = "Q-Master";
  inputs.src-packets-master.ref   = "refs/heads/master";
  inputs.src-packets-master.repo  = "packets.nim";
  inputs.src-packets-master.type  = "github";
  
  inputs."packedjson".dir   = "nimpkgs/p/packedjson";
  inputs."packedjson".owner = "riinr";
  inputs."packedjson".ref   = "flake-pinning";
  inputs."packedjson".repo  = "flake-nimble";
  inputs."packedjson".type  = "github";
  inputs."packedjson".inputs.nixpkgs.follows = "nixpkgs";
  inputs."packedjson".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."crc32".dir   = "nimpkgs/c/crc32";
  inputs."crc32".owner = "riinr";
  inputs."crc32".ref   = "flake-pinning";
  inputs."crc32".repo  = "flake-nimble";
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