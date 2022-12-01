{
  description = ''Helper procs for CGI applications in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cgi-devel".dir   = "devel";
  inputs."cgi-devel".owner = "nim-nix-pkgs";
  inputs."cgi-devel".ref   = "master";
  inputs."cgi-devel".repo  = "cgi";
  inputs."cgi-devel".type  = "github";
  inputs."cgi-devel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cgi-devel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cgi-v0_1_0".dir   = "v0_1_0";
  inputs."cgi-v0_1_0".owner = "nim-nix-pkgs";
  inputs."cgi-v0_1_0".ref   = "master";
  inputs."cgi-v0_1_0".repo  = "cgi";
  inputs."cgi-v0_1_0".type  = "github";
  inputs."cgi-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cgi-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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