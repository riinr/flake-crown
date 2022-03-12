{
  description = ''Unicode Character Database (UCD) access for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-unicodedb-v0_2_3.flake = false;
  inputs.src-unicodedb-v0_2_3.owner = "nitely";
  inputs.src-unicodedb-v0_2_3.ref   = "refs/tags/v0.2.3";
  inputs.src-unicodedb-v0_2_3.repo  = "nim-unicodedb";
  inputs.src-unicodedb-v0_2_3.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-unicodedb-v0_2_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-unicodedb-v0_2_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}