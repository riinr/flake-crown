{
  description = ''Documentation generator that produces pdf and docx from Markdown. Uses Pandoc and LaTeX behind the scenes.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."foliant-develop".dir   = "develop";
  inputs."foliant-develop".owner = "nim-nix-pkgs";
  inputs."foliant-develop".ref   = "master";
  inputs."foliant-develop".repo  = "foliant";
  inputs."foliant-develop".type  = "github";
  inputs."foliant-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."foliant-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."foliant-master".dir   = "master";
  inputs."foliant-master".owner = "nim-nix-pkgs";
  inputs."foliant-master".ref   = "master";
  inputs."foliant-master".repo  = "foliant";
  inputs."foliant-master".type  = "github";
  inputs."foliant-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."foliant-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}