{
  description = ''Wrapper for the markdown rendering hoedown library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-midnight_dynamite-master.flake = false;
  inputs.src-midnight_dynamite-master.owner = "Araq";
  inputs.src-midnight_dynamite-master.ref   = "refs/heads/master";
  inputs.src-midnight_dynamite-master.repo  = "midnight_dynamite";
  inputs.src-midnight_dynamite-master.type  = "github";
  
  inputs."https://github.com/gradha/badger_bits.git".owner = "nim-nix-pkgs";
  inputs."https://github.com/gradha/badger_bits.git".ref   = "master";
  inputs."https://github.com/gradha/badger_bits.git".repo  = "https://github.com/gradha/badger_bits.git";
  inputs."https://github.com/gradha/badger_bits.git".type  = "github";
  inputs."https://github.com/gradha/badger_bits.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/gradha/badger_bits.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nake".owner = "nim-nix-pkgs";
  inputs."nake".ref   = "master";
  inputs."nake".repo  = "nake";
  inputs."nake".type  = "github";
  inputs."nake".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nake".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argument_parser".owner = "nim-nix-pkgs";
  inputs."argument_parser".ref   = "master";
  inputs."argument_parser".repo  = "argument_parser";
  inputs."argument_parser".type  = "github";
  inputs."argument_parser".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argument_parser".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-midnight_dynamite-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-midnight_dynamite-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}