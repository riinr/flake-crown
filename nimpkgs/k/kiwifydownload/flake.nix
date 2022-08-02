{
  description = ''Downloads the kiwify videos from course JSON'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."kiwifydownload-master".dir   = "master";
  inputs."kiwifydownload-master".owner = "nim-nix-pkgs";
  inputs."kiwifydownload-master".ref   = "master";
  inputs."kiwifydownload-master".repo  = "kiwifydownload";
  inputs."kiwifydownload-master".type  = "github";
  inputs."kiwifydownload-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kiwifydownload-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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