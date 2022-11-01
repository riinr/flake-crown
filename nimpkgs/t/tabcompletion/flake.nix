{
  description = ''stdin tab completion library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."tabcompletion-devel".dir   = "devel";
  inputs."tabcompletion-devel".owner = "nim-nix-pkgs";
  inputs."tabcompletion-devel".ref   = "master";
  inputs."tabcompletion-devel".repo  = "tabcompletion";
  inputs."tabcompletion-devel".type  = "github";
  inputs."tabcompletion-devel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tabcompletion-devel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tabcompletion-master".dir   = "master";
  inputs."tabcompletion-master".owner = "nim-nix-pkgs";
  inputs."tabcompletion-master".ref   = "master";
  inputs."tabcompletion-master".repo  = "tabcompletion";
  inputs."tabcompletion-master".type  = "github";
  inputs."tabcompletion-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tabcompletion-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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