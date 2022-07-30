{
  description = ''Friendly, exception-free value-or-error returns, similar to Option[T]'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."result-master".dir   = "master";
  inputs."result-master".owner = "nim-nix-pkgs";
  inputs."result-master".ref   = "master";
  inputs."result-master".repo  = "result";
  inputs."result-master".type  = "github";
  inputs."result-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."result-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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