{
  description = ''Swift-like unicode string handling'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-strunicode-v0_4_0.flake = false;
  inputs.src-strunicode-v0_4_0.owner = "nitely";
  inputs.src-strunicode-v0_4_0.ref   = "refs/tags/v0.4.0";
  inputs.src-strunicode-v0_4_0.repo  = "nim-strunicode";
  inputs.src-strunicode-v0_4_0.type  = "github";
  
  inputs."normalize".dir   = "nimpkgs/n/normalize";
  inputs."normalize".owner = "riinr";
  inputs."normalize".ref   = "flake-pinning";
  inputs."normalize".repo  = "flake-nimble";
  inputs."normalize".type  = "github";
  inputs."normalize".inputs.nixpkgs.follows = "nixpkgs";
  inputs."normalize".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."graphemes".dir   = "nimpkgs/g/graphemes";
  inputs."graphemes".owner = "riinr";
  inputs."graphemes".ref   = "flake-pinning";
  inputs."graphemes".repo  = "flake-nimble";
  inputs."graphemes".type  = "github";
  inputs."graphemes".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-strunicode-v0_4_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-strunicode-v0_4_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}