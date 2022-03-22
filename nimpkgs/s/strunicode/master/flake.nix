{
  description = ''Swift-like unicode string handling'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-strunicode-master.flake = false;
  inputs.src-strunicode-master.ref   = "refs/heads/master";
  inputs.src-strunicode-master.owner = "nitely";
  inputs.src-strunicode-master.repo  = "nim-strunicode";
  inputs.src-strunicode-master.type  = "github";
  
  inputs."normalize".owner = "nim-nix-pkgs";
  inputs."normalize".ref   = "master";
  inputs."normalize".repo  = "normalize";
  inputs."normalize".dir   = "v0_8_0";
  inputs."normalize".type  = "github";
  inputs."normalize".inputs.nixpkgs.follows = "nixpkgs";
  inputs."normalize".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."graphemes".owner = "nim-nix-pkgs";
  inputs."graphemes".ref   = "master";
  inputs."graphemes".repo  = "graphemes";
  inputs."graphemes".dir   = "v0_10_0";
  inputs."graphemes".type  = "github";
  inputs."graphemes".inputs.nixpkgs.follows = "nixpkgs";
  inputs."graphemes".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-strunicode-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-strunicode-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}