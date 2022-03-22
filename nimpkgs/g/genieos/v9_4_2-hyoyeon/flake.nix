{
  description = ''Too awesome procs to be included in Nim's os module.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-genieos-v9_4_2-hyoyeon.flake = false;
  inputs.src-genieos-v9_4_2-hyoyeon.owner = "Araq";
  inputs.src-genieos-v9_4_2-hyoyeon.ref   = "v9_4_2-hyoyeon";
  inputs.src-genieos-v9_4_2-hyoyeon.repo  = "genieos";
  inputs.src-genieos-v9_4_2-hyoyeon.type  = "github";
  
  inputs."x11".owner = "nim-nix-pkgs";
  inputs."x11".ref   = "master";
  inputs."x11".repo  = "x11";
  inputs."x11".dir   = "";
  inputs."x11".type  = "github";
  inputs."x11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."x11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-genieos-v9_4_2-hyoyeon"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-genieos-v9_4_2-hyoyeon";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}