{
  description = ''Manage your clipboard remotely'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-servclip-master.flake = false;
  inputs.src-servclip-master.owner = "lurlo";
  inputs.src-servclip-master.ref   = "refs/heads/master";
  inputs.src-servclip-master.repo  = "servclip";
  inputs.src-servclip-master.type  = "gitlab";
  
  inputs."jester".dir   = "nimpkgs/j/jester";
  inputs."jester".owner = "riinr";
  inputs."jester".ref   = "flake-pinning";
  inputs."jester".repo  = "flake-nimble";
  inputs."jester".type  = "github";
  inputs."jester".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jester".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimclipboard".dir   = "nimpkgs/n/nimclipboard";
  inputs."nimclipboard".owner = "riinr";
  inputs."nimclipboard".ref   = "flake-pinning";
  inputs."nimclipboard".repo  = "flake-nimble";
  inputs."nimclipboard".type  = "github";
  inputs."nimclipboard".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimclipboard".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bluesoftcosmos".dir   = "nimpkgs/b/bluesoftcosmos";
  inputs."bluesoftcosmos".owner = "riinr";
  inputs."bluesoftcosmos".ref   = "flake-pinning";
  inputs."bluesoftcosmos".repo  = "flake-nimble";
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