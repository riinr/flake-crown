{
  description = ''Swift-like unicode string handling'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-strunicode-v0_3_0.flake = false;
  inputs.src-strunicode-v0_3_0.owner = "nitely";
  inputs.src-strunicode-v0_3_0.ref   = "refs/tags/v0.3.0";
  inputs.src-strunicode-v0_3_0.repo  = "nim-strunicode";
  inputs.src-strunicode-v0_3_0.type  = "github";
  
  inputs."normalize".owner = "nim-nix-pkgs";
  inputs."normalize".ref   = "master";
  inputs."normalize".repo  = "normalize";
  inputs."normalize".type  = "github";
  inputs."normalize".inputs.nixpkgs.follows = "nixpkgs";
  inputs."normalize".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."graphemes".owner = "nim-nix-pkgs";
  inputs."graphemes".ref   = "master";
  inputs."graphemes".repo  = "graphemes";
  inputs."graphemes".type  = "github";
  inputs."graphemes".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-strunicode-v0_3_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-strunicode-v0_3_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}