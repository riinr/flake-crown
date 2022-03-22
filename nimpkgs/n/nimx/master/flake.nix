{
  description = ''GUI framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimx-master.flake = false;
  inputs.src-nimx-master.owner = "yglukhov";
  inputs.src-nimx-master.ref   = "master";
  inputs.src-nimx-master.repo  = "nimx";
  inputs.src-nimx-master.type  = "github";
  
  inputs."sdl2".owner = "nim-nix-pkgs";
  inputs."sdl2".ref   = "master";
  inputs."sdl2".repo  = "sdl2";
  inputs."sdl2".dir   = "v2_0_3";
  inputs."sdl2".type  = "github";
  inputs."sdl2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opengl".owner = "nim-nix-pkgs";
  inputs."opengl".ref   = "master";
  inputs."opengl".repo  = "opengl";
  inputs."opengl".dir   = "";
  inputs."opengl".type  = "github";
  inputs."opengl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsl".owner = "nim-nix-pkgs";
  inputs."nimsl".ref   = "master";
  inputs."nimsl".repo  = "nimsl";
  inputs."nimsl".dir   = "v0_3_2";
  inputs."nimsl".type  = "github";
  inputs."nimsl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jnim".owner = "nim-nix-pkgs";
  inputs."jnim".ref   = "master";
  inputs."jnim".repo  = "jnim";
  inputs."jnim".dir   = "v0_5_1";
  inputs."jnim".type  = "github";
  inputs."jnim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nake".owner = "nim-nix-pkgs";
  inputs."nake".ref   = "master";
  inputs."nake".repo  = "nake";
  inputs."nake".dir   = "1_9_4";
  inputs."nake".type  = "github";
  inputs."nake".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nake".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."closure_compiler".owner = "nim-nix-pkgs";
  inputs."closure_compiler".ref   = "master";
  inputs."closure_compiler".repo  = "closure_compiler";
  inputs."closure_compiler".dir   = "v0_3_5";
  inputs."closure_compiler".type  = "github";
  inputs."closure_compiler".inputs.nixpkgs.follows = "nixpkgs";
  inputs."closure_compiler".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."plists".owner = "nim-nix-pkgs";
  inputs."plists".ref   = "master";
  inputs."plists".repo  = "plists";
  inputs."plists".dir   = "";
  inputs."plists".type  = "github";
  inputs."plists".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plists".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."variant".owner = "nim-nix-pkgs";
  inputs."variant".ref   = "master";
  inputs."variant".repo  = "variant";
  inputs."variant".dir   = "v0_2_12";
  inputs."variant".type  = "github";
  inputs."variant".inputs.nixpkgs.follows = "nixpkgs";
  inputs."variant".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."kiwi".owner = "nim-nix-pkgs";
  inputs."kiwi".ref   = "master";
  inputs."kiwi".repo  = "kiwi";
  inputs."kiwi".dir   = "";
  inputs."kiwi".type  = "github";
  inputs."kiwi".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kiwi".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsbind".owner = "nim-nix-pkgs";
  inputs."jsbind".ref   = "master";
  inputs."jsbind".repo  = "jsbind";
  inputs."jsbind".dir   = "";
  inputs."jsbind".type  = "github";
  inputs."jsbind".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsbind".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rect_packer".owner = "nim-nix-pkgs";
  inputs."rect_packer".ref   = "master";
  inputs."rect_packer".repo  = "rect_packer";
  inputs."rect_packer".dir   = "";
  inputs."rect_packer".type  = "github";
  inputs."rect_packer".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rect_packer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."os_files".owner = "nim-nix-pkgs";
  inputs."os_files".ref   = "master";
  inputs."os_files".repo  = "os_files";
  inputs."os_files".dir   = "";
  inputs."os_files".type  = "github";
  inputs."os_files".inputs.nixpkgs.follows = "nixpkgs";
  inputs."os_files".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwebp".owner = "nim-nix-pkgs";
  inputs."nimwebp".ref   = "master";
  inputs."nimwebp".repo  = "nimwebp";
  inputs."nimwebp".dir   = "";
  inputs."nimwebp".type  = "github";
  inputs."nimwebp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwebp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimx-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimx-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}