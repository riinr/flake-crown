{
  description = ''Twitter bot for fetching flickr images with tags'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-flickr_image_bot-master.flake = false;
  inputs.src-flickr_image_bot-master.ref   = "refs/heads/master";
  inputs.src-flickr_image_bot-master.owner = "snus-kin";
  inputs.src-flickr_image_bot-master.repo  = "flickr-image-bot";
  inputs.src-flickr_image_bot-master.type  = "github";
  
  inputs."twitter".owner = "nim-nix-pkgs";
  inputs."twitter".ref   = "master";
  inputs."twitter".repo  = "twitter";
  inputs."twitter".dir   = "2_0_0";
  inputs."twitter".type  = "github";
  inputs."twitter".inputs.nixpkgs.follows = "nixpkgs";
  inputs."twitter".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-flickr_image_bot-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-flickr_image_bot-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}