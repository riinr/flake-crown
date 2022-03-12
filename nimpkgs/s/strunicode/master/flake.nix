{
  description = ''Swift-like unicode string handling'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-strunicode-master.flake = false;
  inputs.src-strunicode-master.owner = "nitely";
  inputs.src-strunicode-master.ref   = "refs/heads/master";
  inputs.src-strunicode-master.repo  = "nim-strunicode";
  inputs.src-strunicode-master.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-strunicode-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-strunicode-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}