{
  description = ''Unicode Character Database (UCD) access for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-unicodedb-v0_5_1.flake = false;
  inputs.src-unicodedb-v0_5_1.ref   = "refs/tags/v0.5.1";
  inputs.src-unicodedb-v0_5_1.owner = "nitely";
  inputs.src-unicodedb-v0_5_1.repo  = "nim-unicodedb";
  inputs.src-unicodedb-v0_5_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-unicodedb-v0_5_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-unicodedb-v0_5_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}