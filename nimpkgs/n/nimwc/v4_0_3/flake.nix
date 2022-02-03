{
  description = ''A website management tool. Run the file and access your webpage.'';
  inputs.src-nimwc-v4_0_3.flake = false;
  inputs.src-nimwc-v4_0_3.type = "github";
  inputs.src-nimwc-v4_0_3.owner = "ThomasTJdev";
  inputs.src-nimwc-v4_0_3.repo = "nim_websitecreator";
  inputs.src-nimwc-v4_0_3.ref = "refs/tags/v4.0.3";
  
  
  inputs."jester".url = "path:../../../j/jester";
  inputs."jester".type = "github";
  inputs."jester".owner = "riinr";
  inputs."jester".repo = "flake-nimble";
  inputs."jester".ref = "flake-pinning";
  inputs."jester".dir = "nimpkgs/j/jester";

  
  inputs."recaptcha".url = "path:../../../r/recaptcha";
  inputs."recaptcha".type = "github";
  inputs."recaptcha".owner = "riinr";
  inputs."recaptcha".repo = "flake-nimble";
  inputs."recaptcha".ref = "flake-pinning";
  inputs."recaptcha".dir = "nimpkgs/r/recaptcha";

  
  inputs."bcrypt".url = "path:../../../b/bcrypt";
  inputs."bcrypt".type = "github";
  inputs."bcrypt".owner = "riinr";
  inputs."bcrypt".repo = "flake-nimble";
  inputs."bcrypt".ref = "flake-pinning";
  inputs."bcrypt".dir = "nimpkgs/b/bcrypt";

  outputs = { self, nixpkgs, src-nimwc-v4_0_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimwc-v4_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimwc-v4_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}