{
  description = ''Ascii Text allows you to print large ASCII fonts for the console and for the web'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."asciitext-master".dir   = "master";
  inputs."asciitext-master".owner = "nim-nix-pkgs";
  inputs."asciitext-master".ref   = "master";
  inputs."asciitext-master".repo  = "asciitext";
  inputs."asciitext-master".type  = "github";
  inputs."asciitext-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asciitext-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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