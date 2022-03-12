{
  description = ''Documentation generator that produces pdf and docx from Markdown. Uses Pandoc and LaTeX behind the scenes.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."foliant-develop".url = "path:./develop";
  inputs."foliant-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."foliant-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."foliant-master".url = "path:./master";
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