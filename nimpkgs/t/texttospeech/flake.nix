{
  description = ''A client for the Google Cloud Text to Speech API.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."texttospeech-master".dir   = "master";
  inputs."texttospeech-master".owner = "nim-nix-pkgs";
  inputs."texttospeech-master".ref   = "master";
  inputs."texttospeech-master".repo  = "texttospeech";
  inputs."texttospeech-master".type  = "github";
  inputs."texttospeech-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."texttospeech-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."texttospeech-v0_1_0".dir   = "v0_1_0";
  inputs."texttospeech-v0_1_0".owner = "nim-nix-pkgs";
  inputs."texttospeech-v0_1_0".ref   = "master";
  inputs."texttospeech-v0_1_0".repo  = "texttospeech";
  inputs."texttospeech-v0_1_0".type  = "github";
  inputs."texttospeech-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."texttospeech-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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