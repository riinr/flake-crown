{
  description = ''Manage your clipboard remotely'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-servclip-master.flake = false;
  inputs.src-servclip-master.ref   = "refs/heads/master";
  inputs.src-servclip-master.owner = "lurlo";
  inputs.src-servclip-master.repo  = "servclip";
  inputs.src-servclip-master.type  = "gitlab";
  
  inputs."jester".owner = "nim-nix-pkgs";
  inputs."jester".ref   = "master";
  inputs."jester".repo  = "jester";
  inputs."jester".dir   = "v0_5_0";
  inputs."jester".type  = "github";
  inputs."jester".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jester".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimclipboard".owner = "nim-nix-pkgs";
  inputs."nimclipboard".ref   = "master";
  inputs."nimclipboard".repo  = "nimclipboard";
  inputs."nimclipboard".dir   = "v0_1_2";
  inputs."nimclipboard".type  = "github";
  inputs."nimclipboard".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimclipboard".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bluesoftcosmos".owner = "nim-nix-pkgs";
  inputs."bluesoftcosmos".ref   = "master";
  inputs."bluesoftcosmos".repo  = "bluesoftcosmos";
  inputs."bluesoftcosmos".dir   = "";
  inputs."bluesoftcosmos".type  = "github";
  inputs."bluesoftcosmos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bluesoftcosmos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-servclip-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-servclip-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}