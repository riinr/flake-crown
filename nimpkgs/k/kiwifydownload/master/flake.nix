{
  description = ''Downloads the kiwify videos from course JSON'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-kiwifyDownload-master.flake = false;
  inputs.src-kiwifyDownload-master.ref   = "refs/heads/master";
  inputs.src-kiwifyDownload-master.owner = "thisago";
  inputs.src-kiwifyDownload-master.repo  = "kiwifyDownload";
  inputs.src-kiwifyDownload-master.type  = "github";
  
  inputs."cligen".owner = "nim-nix-pkgs";
  inputs."cligen".ref   = "master";
  inputs."cligen".repo  = "cligen";
  inputs."cligen".dir   = "v1_5_28";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vimeo".owner = "nim-nix-pkgs";
  inputs."vimeo".ref   = "master";
  inputs."vimeo".repo  = "vimeo";
  inputs."vimeo".dir   = "source";
  inputs."vimeo".type  = "github";
  inputs."vimeo".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vimeo".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."util".owner = "nim-nix-pkgs";
  inputs."util".ref   = "master";
  inputs."util".repo  = "util";
  inputs."util".dir   = "master";
  inputs."util".type  = "github";
  inputs."util".inputs.nixpkgs.follows = "nixpkgs";
  inputs."util".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-kiwifyDownload-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-kiwifyDownload-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}